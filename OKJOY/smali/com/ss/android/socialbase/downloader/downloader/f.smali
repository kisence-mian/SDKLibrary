.class public Lcom/ss/android/socialbase/downloader/downloader/f;
.super Ljava/lang/Object;
.source "Downloader.java"


# static fields
.field private static volatile a:Lcom/ss/android/socialbase/downloader/downloader/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/f;->a:Lcom/ss/android/socialbase/downloader/downloader/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/g;)V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/g;)V

    .line 46
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;
    .registers 3

    .prologue
    .line 54
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/f;->a:Lcom/ss/android/socialbase/downloader/downloader/f;

    if-nez v0, :cond_16

    .line 55
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/f;

    monitor-enter v1

    .line 56
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/f;->a:Lcom/ss/android/socialbase/downloader/downloader/f;

    if-nez v0, :cond_15

    .line 57
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Landroid/content/Context;)V

    .line 58
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/f;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/f;->a:Lcom/ss/android/socialbase/downloader/downloader/f;

    .line 60
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 62
    :cond_16
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/f;->a:Lcom/ss/android/socialbase/downloader/downloader/f;

    return-object v0

    .line 60
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public static declared-synchronized a(Lcom/ss/android/socialbase/downloader/downloader/g;)V
    .registers 3

    .prologue
    .line 35
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/f;

    monitor-enter v1

    if-nez p0, :cond_7

    .line 42
    :goto_5
    monitor-exit v1

    return-void

    .line 37
    :cond_7
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/f;->a:Lcom/ss/android/socialbase/downloader/downloader/f;

    if-nez v0, :cond_15

    .line 38
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->t()Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/f;->a:Lcom/ss/android/socialbase/downloader/downloader/f;
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    goto :goto_5

    .line 35
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0

    .line 40
    :cond_15
    :try_start_15
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/g;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_12

    goto :goto_5
.end method

.method public static b(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 2

    .prologue
    .line 71
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    .line 72
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/d;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/g/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 4

    .prologue
    .line 217
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 142
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->c()V

    .line 143
    return-void
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 80
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->d(I)V

    .line 81
    return-void
.end method

.method public a(ILcom/ss/android/socialbase/downloader/d/w;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 301
    if-nez p2, :cond_3

    .line 304
    :goto_2
    return-void

    .line 303
    :cond_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/h;->a:Lcom/ss/android/socialbase/downloader/b/h;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(ILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V

    goto :goto_2
.end method

.method public a(IZ)V
    .registers 4

    .prologue
    .line 110
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(IZ)V

    .line 111
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/util/List;)V

    .line 164
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 3

    .prologue
    .line 409
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .registers 3

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(IZ)V

    .line 107
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .registers 3

    .prologue
    .line 118
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->f(I)V

    .line 119
    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Z
    .registers 3

    .prologue
    .line 127
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->e(I)Z

    move-result v0

    return v0
.end method

.method public e(I)V
    .registers 3

    .prologue
    .line 135
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->g(I)V

    .line 136
    return-void
.end method

.method public f(I)I
    .registers 3

    .prologue
    .line 181
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->h(I)I

    move-result v0

    return v0
.end method

.method public g(I)Z
    .registers 3

    .prologue
    .line 190
    const/high16 v0, 0x400000

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 191
    monitor-enter p0

    .line 193
    :try_start_9
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->i(I)Z

    move-result v0

    monitor-exit p0

    .line 197
    :goto_12
    return v0

    .line 194
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v0

    .line 197
    :cond_16
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->i(I)Z

    move-result v0

    goto :goto_12
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 3

    .prologue
    .line 207
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->j(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    return-object v0
.end method

.method public i(I)Lcom/ss/android/socialbase/downloader/d/z;
    .registers 3

    .prologue
    .line 226
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->k(I)Lcom/ss/android/socialbase/downloader/d/z;

    move-result-object v0

    return-object v0
.end method

.method public j(I)V
    .registers 4

    .prologue
    .line 254
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/ss/android/socialbase/downloader/downloader/c;->d(IZ)V

    .line 255
    return-void
.end method

.method public k(I)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 280
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/h;->a:Lcom/ss/android/socialbase/downloader/b/h;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(ILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V

    .line 281
    return-void
.end method

.method public l(I)Lcom/ss/android/socialbase/downloader/d/q;
    .registers 3

    .prologue
    .line 495
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->o(I)Lcom/ss/android/socialbase/downloader/d/q;

    move-result-object v0

    return-object v0
.end method

.method public m(I)Z
    .registers 3

    .prologue
    .line 521
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 522
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->b()Z

    move-result v0

    .line 521
    return v0
.end method
