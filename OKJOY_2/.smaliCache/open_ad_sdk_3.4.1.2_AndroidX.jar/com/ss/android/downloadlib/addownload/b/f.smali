.class public Lcom/ss/android/downloadlib/addownload/b/f;
.super Ljava/lang/Object;
.source "ModelManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/b/f$a;
    }
.end annotation


# instance fields
.field private volatile a:Z

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/a/a/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/a/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/a/a/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/downloadad/a/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->a:Z

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/addownload/b/f$1;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/b/f;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/b/f;
    .registers 1

    .line 41
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f$a;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/b/f;)Z
    .registers 1

    .line 35
    iget-boolean p0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->a:Z

    return p0
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/b/f;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/ss/android/downloadlib/addownload/b/f;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/ss/android/downloadlib/addownload/b/f;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public a(J)Lcom/ss/android/a/a/b/c;
    .registers 4

    .line 104
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/a/a/b/c;

    return-object p1
.end method

.method public a(I)Lcom/ss/android/downloadad/a/b/b;
    .registers 5

    .line 192
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/downloadad/a/b/b;

    .line 193
    if-nez v1, :cond_19

    .line 194
    goto :goto_a

    .line 196
    :cond_19
    invoke-virtual {v1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v2

    if-ne v2, p1, :cond_20

    .line 197
    return-object v1

    .line 199
    :cond_20
    goto :goto_a

    .line 200
    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/a/b/b;
    .registers 9

    .line 148
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 149
    return-object v0

    .line 151
    :cond_4
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 154
    :try_start_e
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    const-string v2, "extra"

    invoke-static {v1, v2}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    .line 156
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_46

    .line 157
    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/b/f;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/downloadad/a/b/b;

    .line 158
    if-nez v4, :cond_3c

    .line 159
    goto :goto_2d

    .line 161
    :cond_3c
    invoke-virtual {v4}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v5
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_40} :catch_47

    cmp-long v5, v5, v1

    if-nez v5, :cond_45

    .line 162
    return-object v4

    .line 164
    :cond_45
    goto :goto_2d

    .line 168
    :cond_46
    goto :goto_4b

    .line 166
    :catch_47
    move-exception v1

    .line 167
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    :cond_4b
    :goto_4b
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/b/f;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/downloadad/a/b/b;

    .line 172
    if-nez v2, :cond_64

    .line 173
    goto :goto_55

    .line 175
    :cond_64
    invoke-virtual {v2}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v4

    if-ne v3, v4, :cond_6f

    .line 176
    return-object v2

    .line 178
    :cond_6f
    goto :goto_55

    .line 180
    :cond_70
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/b/f;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/downloadad/a/b/b;

    .line 181
    if-nez v2, :cond_89

    .line 182
    goto :goto_7a

    .line 184
    :cond_89
    invoke-virtual {v2}, Lcom/ss/android/downloadad/a/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 185
    return-object v2

    .line 187
    :cond_98
    goto :goto_7a

    .line 188
    :cond_99
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/b/b;
    .registers 6

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 125
    return-object v1

    .line 127
    :cond_8
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/downloadad/a/b/b;

    .line 128
    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Lcom/ss/android/downloadad/a/b/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 129
    return-object v2

    .line 131
    :cond_2b
    goto :goto_12

    .line 132
    :cond_2c
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/downloadad/a/b/b;",
            ">;"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_44

    .line 237
    :cond_12
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/b/f;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/downloadad/a/b/b;

    .line 238
    if-eqz v2, :cond_42

    invoke-virtual {v2}, Lcom/ss/android/downloadad/a/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 239
    invoke-virtual {v2, p2}, Lcom/ss/android/downloadad/a/b/b;->b(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v2}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_42
    goto :goto_1c

    .line 243
    :cond_43
    return-object v0

    .line 235
    :cond_44
    :goto_44
    return-object v0
.end method

.method public a(JLcom/ss/android/a/a/b/a;)V
    .registers 5

    .line 90
    if-eqz p3, :cond_b

    .line 91
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_b
    return-void
.end method

.method public a(JLcom/ss/android/a/a/b/b;)V
    .registers 5

    .line 84
    if-eqz p3, :cond_b

    .line 85
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_b
    return-void
.end method

.method public a(Lcom/ss/android/a/a/b/c;)V
    .registers 5

    .line 74
    if-eqz p1, :cond_2b

    .line 75
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->x()Lcom/ss/android/a/a/c/b;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 77
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->x()Lcom/ss/android/a/a/c/b;

    move-result-object v0

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/a/a/c/b;->a(J)V

    .line 78
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->x()Lcom/ss/android/a/a/c/b;

    move-result-object v0

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ss/android/a/a/c/b;->d(Ljava/lang/String;)V

    .line 81
    :cond_2b
    return-void
.end method

.method public declared-synchronized a(Lcom/ss/android/downloadad/a/b/b;)V
    .registers 5

    monitor-enter p0

    .line 96
    if-nez p1, :cond_5

    .line 97
    monitor-exit p0

    return-void

    .line 99
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/i;->a()Lcom/ss/android/downloadlib/addownload/b/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/i;->a(Lcom/ss/android/downloadad/a/b/b;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1b

    .line 101
    monitor-exit p0

    return-void

    .line 95
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 271
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 273
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/b/f;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    goto :goto_a

    .line 276
    :cond_2b
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/i;->a()Lcom/ss/android/downloadlib/addownload/b/i;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/b/i;->a(Ljava/util/List;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 277
    monitor-exit p0

    return-void

    .line 270
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(J)Lcom/ss/android/a/a/b/b;
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/a/a/b/b;

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/ss/android/downloadad/a/b/b;
    .registers 6

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 137
    return-object v1

    .line 139
    :cond_8
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/downloadad/a/b/b;

    .line 140
    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Lcom/ss/android/downloadad/a/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 141
    return-object v2

    .line 143
    :cond_2b
    goto :goto_12

    .line 144
    :cond_2c
    return-object v1
.end method

.method public b()V
    .registers 4

    .line 58
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/addownload/b/f$1;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/b/f$1;-><init>(Lcom/ss/android/downloadlib/addownload/b/f;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;Z)V

    .line 71
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_38

    .line 253
    :cond_d
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/a/a/b/c;

    .line 254
    instance-of v2, v1, Lcom/ss/android/downloadad/a/a/c;

    if-eqz v2, :cond_36

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 255
    check-cast v1, Lcom/ss/android/downloadad/a/a/c;

    invoke-virtual {v1, p2}, Lcom/ss/android/downloadad/a/a/c;->b(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c;

    .line 257
    :cond_36
    goto :goto_17

    .line 258
    :cond_37
    return-void

    .line 251
    :cond_38
    :goto_38
    return-void
.end method

.method public c(J)Lcom/ss/android/a/a/b/a;
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/a/a/b/a;

    return-object p1
.end method

.method public c()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/downloadad/a/b/b;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public d(J)Lcom/ss/android/downloadad/a/b/b;
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadad/a/b/b;

    return-object p1
.end method

.method public e(J)Lcom/ss/android/downloadlib/addownload/b/e;
    .registers 5

    .line 205
    new-instance v0, Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/b/e;-><init>()V

    .line 206
    iput-wide p1, v0, Lcom/ss/android/downloadlib/addownload/b/e;->a:J

    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->a(J)Lcom/ss/android/a/a/b/c;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->b(J)Lcom/ss/android/a/a/b/b;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    .line 209
    iget-object v1, v0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    if-nez v1, :cond_1e

    .line 210
    new-instance v1, Lcom/ss/android/a/a/b/g;

    invoke-direct {v1}, Lcom/ss/android/a/a/b/g;-><init>()V

    iput-object v1, v0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    .line 212
    :cond_1e
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->c(J)Lcom/ss/android/a/a/b/a;

    move-result-object p1

    iput-object p1, v0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    .line 213
    iget-object p1, v0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    if-nez p1, :cond_2f

    .line 214
    new-instance p1, Lcom/ss/android/a/a/b/f;

    invoke-direct {p1}, Lcom/ss/android/a/a/b/f;-><init>()V

    iput-object p1, v0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    .line 216
    :cond_2f
    return-object v0
.end method

.method public f(J)V
    .registers 5

    .line 223
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-void
.end method
